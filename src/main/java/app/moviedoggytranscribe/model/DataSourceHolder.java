package app.moviedoggytranscribe.model;

import app.moviedoggytranscribe.exception.NoSuchMovieException;
import app.moviedoggytranscribe.exception.NoSuchStatusException;
import app.moviedoggytranscribe.model.entity.Movie;
import app.moviedoggytranscribe.model.entity.Status;
import app.moviedoggytranscribe.service.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Observable;

@Component
public class DataSourceHolder extends Observable {

    @Autowired
    private Service<Movie, NoSuchMovieException> movieService;
    @Autowired
    private Service<Status, NoSuchStatusException> statusService;

    private DataSourceType dataSourceType = DataSourceType.DEFAULT;

    @PostConstruct
    public void init() {
        addObserver(movieService);
        addObserver(statusService);
    }

    public void setDataSourceType(DataSourceType dataSourceType) {
        DataSourceType old = this.dataSourceType;
        this.dataSourceType = dataSourceType;

        if (!old.equals(this.dataSourceType)) {
            setChanged();
        } else {
            clearChanged();
        }

        notifyObservers();
    }

    public DataSourceType getDataSourceType() {
        return this.dataSourceType;
    }

}
